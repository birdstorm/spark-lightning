/*
 *
 * Copyright 2019 PingCAP, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

package com.pingcap.tikv.parser;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.misc.Interval;

// Check https://github.com/antlr/antlr4/blob/master/doc/resources/CaseChangingCharStream.java
public class CaseChangingCharStream implements CharStream {
  final boolean upper;
  private final CharStream stream;

  /**
   * Constructs a new CaseChangingCharStream wrapping the given {@link CharStream} forcing all
   * characters to upper case or lower case.
   *
   * @param stream The stream to wrap.
   * @param upper If true force each symbol to upper case, otherwise force to lower.
   */
  public CaseChangingCharStream(CharStream stream, boolean upper) {
    this.stream = stream;
    this.upper = upper;
  }

  @Override
  public String getText(Interval interval) {
    return stream.getText(interval);
  }

  @Override
  public void consume() {
    stream.consume();
  }

  @Override
  public int LA(int i) {
    int c = stream.LA(i);
    if (c <= 0) {
      return c;
    }
    if (upper) {
      return Character.toUpperCase(c);
    }
    return Character.toLowerCase(c);
  }

  @Override
  public int mark() {
    return stream.mark();
  }

  @Override
  public void release(int marker) {
    stream.release(marker);
  }

  @Override
  public int index() {
    return stream.index();
  }

  @Override
  public void seek(int index) {
    stream.seek(index);
  }

  @Override
  public int size() {
    return stream.size();
  }

  @Override
  public String getSourceName() {
    return stream.getSourceName();
  }
}
