/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/. */

// https://encoding.spec.whatwg.org/#interface-textdecoder
dictionary TextDecoderOptions {
  boolean fatal = false;
  boolean ignoreBOM = false;
};

dictionary TextDecodeOptions {
  boolean stream = false;
};

[Constructor(optional DOMString label = "utf-8", optional TextDecoderOptions options = {}), Exposed=(Window,Worker)]
interface TextDecoder {
  readonly attribute DOMString encoding;
  readonly attribute boolean fatal;
  readonly attribute boolean ignoreBOM;
  [Throws]
  USVString decode(optional BufferSource input, optional TextDecodeOptions options = {});
};
