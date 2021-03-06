// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/api.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

/// Api is a light-weight descriptor for a protocol buffer service.
struct Google_Protobuf_Api: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Api"

  /// The fully qualified name of this api, including package name
  /// followed by the api's simple name.
  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// The methods of this api, in unspecified order.
  var methods: [Google_Protobuf_Method] {
    get {return _storage._methods}
    set {_uniqueStorage()._methods = newValue}
  }

  /// Any metadata attached to the API.
  var options: [Google_Protobuf_Option] {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  /// A version string for this api. If specified, must have the form
  /// `major-version.minor-version`, as in `1.10`. If the minor version
  /// is omitted, it defaults to zero. If the entire version field is
  /// empty, the major version is derived from the package name, as
  /// outlined below. If the field is not empty, the version in the
  /// package name will be verified to be consistent with what is
  /// provided here.
  ///
  /// The versioning schema uses [semantic
  /// versioning](http://semver.org) where the major version number
  /// indicates a breaking change and the minor version an additive,
  /// non-breaking change. Both version numbers are signals to users
  /// what to expect from different versions, and should be carefully
  /// chosen based on the product plan.
  ///
  /// The major version is also reflected in the package name of the
  /// API, which must end in `v<major-version>`, as in
  /// `google.feature.v1`. For major versions 0 and 1, the suffix can
  /// be omitted. Zero major versions must only be used for
  /// experimental, none-GA apis.
  var version: String {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  /// Source context for the protocol buffer service represented by this
  /// message.
  var sourceContext: Google_Protobuf_SourceContext {
    get {return _storage._sourceContext ?? Google_Protobuf_SourceContext()}
    set {_uniqueStorage()._sourceContext = newValue}
  }
  /// Returns true if `sourceContext` has been explicitly set.
  var hasSourceContext: Bool {return _storage._sourceContext != nil}
  /// Clears the value of `sourceContext`. Subsequent reads from it will return its default value.
  mutating func clearSourceContext() {_storage._sourceContext = nil}

  /// Included APIs. See [Mixin][].
  var mixins: [Google_Protobuf_Mixin] {
    get {return _storage._mixins}
    set {_uniqueStorage()._mixins = newValue}
  }

  /// The source syntax of the service.
  var syntax: Google_Protobuf_Syntax {
    get {return _storage._syntax}
    set {_uniqueStorage()._syntax = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._methods)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._options)
        case 4: try decoder.decodeSingularStringField(value: &_storage._version)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._sourceContext)
        case 6: try decoder.decodeRepeatedMessageField(value: &_storage._mixins)
        case 7: try decoder.decodeSingularEnumField(value: &_storage._syntax)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._methods.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._methods, fieldNumber: 2)
      }
      if !_storage._options.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._options, fieldNumber: 3)
      }
      if !_storage._version.isEmpty {
        try visitor.visitSingularStringField(value: _storage._version, fieldNumber: 4)
      }
      if let v = _storage._sourceContext {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._mixins.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._mixins, fieldNumber: 6)
      }
      if _storage._syntax != .proto2 {
        try visitor.visitSingularEnumField(value: _storage._syntax, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

/// Method represents a method of an api.
struct Google_Protobuf_Method: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Method"

  /// The simple name of this method.
  var name: String = String()

  /// A URL of the input message type.
  var requestTypeURL: String = String()

  /// If true, the request is streamed.
  var requestStreaming: Bool = false

  /// The URL of the output message type.
  var responseTypeURL: String = String()

  /// If true, the response is streamed.
  var responseStreaming: Bool = false

  /// Any metadata attached to the method.
  var options: [Google_Protobuf_Option] = []

  /// The source syntax of this method.
  var syntax: Google_Protobuf_Syntax = .proto2

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.requestTypeURL)
      case 3: try decoder.decodeSingularBoolField(value: &self.requestStreaming)
      case 4: try decoder.decodeSingularStringField(value: &self.responseTypeURL)
      case 5: try decoder.decodeSingularBoolField(value: &self.responseStreaming)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.options)
      case 7: try decoder.decodeSingularEnumField(value: &self.syntax)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.requestTypeURL.isEmpty {
      try visitor.visitSingularStringField(value: self.requestTypeURL, fieldNumber: 2)
    }
    if self.requestStreaming != false {
      try visitor.visitSingularBoolField(value: self.requestStreaming, fieldNumber: 3)
    }
    if !self.responseTypeURL.isEmpty {
      try visitor.visitSingularStringField(value: self.responseTypeURL, fieldNumber: 4)
    }
    if self.responseStreaming != false {
      try visitor.visitSingularBoolField(value: self.responseStreaming, fieldNumber: 5)
    }
    if !self.options.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.options, fieldNumber: 6)
    }
    if self.syntax != .proto2 {
      try visitor.visitSingularEnumField(value: self.syntax, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Declares an API to be included in this API. The including API must
/// redeclare all the methods from the included API, but documentation
/// and options are inherited as follows:
///
/// - If after comment and whitespace stripping, the documentation
///   string of the redeclared method is empty, it will be inherited
///   from the original method.
///
/// - Each annotation belonging to the service config (http,
///   visibility) which is not set in the redeclared method will be
///   inherited.
///
/// - If an http annotation is inherited, the path pattern will be
///   modified as follows. Any version prefix will be replaced by the
///   version of the including API plus the [root][] path if specified.
///
/// Example of a simple mixin:
///
///     package google.acl.v1;
///     service AccessControl {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v1/{resource=**}:getAcl";
///       }
///     }
///
///     package google.storage.v2;
///     service Storage {
///       rpc GetAcl(GetAclRequest) returns (Acl);
///
///       // Get a data record.
///       rpc GetData(GetDataRequest) returns (Data) {
///         option (google.api.http).get = "/v2/{resource=**}";
///       }
///     }
///
/// Example of a mixin configuration:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///
/// The mixin construct implies that all methods in `AccessControl` are
/// also declared with same name and request/response types in
/// `Storage`. A documentation generator or annotation processor will
/// see the effective `Storage.GetAcl` method after inherting
/// documentation and annotations as follows:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/{resource=**}:getAcl";
///       }
///       ...
///     }
///
/// Note how the version in the path pattern changed from `v1` to `v2`.
///
/// If the `root` field in the mixin is specified, it should be a
/// relative path under which inherited HTTP paths are placed. Example:
///
///     apis:
///     - name: google.storage.v2.Storage
///       mixins:
///       - name: google.acl.v1.AccessControl
///         root: acls
///
/// This implies the following inherited HTTP annotation:
///
///     service Storage {
///       // Get the underlying ACL object.
///       rpc GetAcl(GetAclRequest) returns (Acl) {
///         option (google.api.http).get = "/v2/acls/{resource=**}:getAcl";
///       }
///       ...
///     }
struct Google_Protobuf_Mixin: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Mixin"

  /// The fully qualified name of the API which is included.
  var name: String = String()

  /// If non-empty specifies a path under which inherited HTTP paths
  /// are rooted.
  var root: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.root)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.root.isEmpty {
      try visitor.visitSingularStringField(value: self.root, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.protobuf"

extension Google_Protobuf_Api: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "methods"),
    3: .same(proto: "options"),
    4: .same(proto: "version"),
    5: .standard(proto: "source_context"),
    6: .same(proto: "mixins"),
    7: .same(proto: "syntax"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _methods: [Google_Protobuf_Method] = []
    var _options: [Google_Protobuf_Option] = []
    var _version: String = String()
    var _sourceContext: Google_Protobuf_SourceContext? = nil
    var _mixins: [Google_Protobuf_Mixin] = []
    var _syntax: Google_Protobuf_Syntax = .proto2

    init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _methods = source._methods
      _options = source._options
      _version = source._version
      _sourceContext = source._sourceContext
      _mixins = source._mixins
      _syntax = source._syntax
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: Google_Protobuf_Api) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._name != other_storage._name {return false}
        if _storage._methods != other_storage._methods {return false}
        if _storage._options != other_storage._options {return false}
        if _storage._version != other_storage._version {return false}
        if _storage._sourceContext != other_storage._sourceContext {return false}
        if _storage._mixins != other_storage._mixins {return false}
        if _storage._syntax != other_storage._syntax {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Method: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "request_type_url"),
    3: .standard(proto: "request_streaming"),
    4: .standard(proto: "response_type_url"),
    5: .standard(proto: "response_streaming"),
    6: .same(proto: "options"),
    7: .same(proto: "syntax"),
  ]

  func _protobuf_generated_isEqualTo(other: Google_Protobuf_Method) -> Bool {
    if self.name != other.name {return false}
    if self.requestTypeURL != other.requestTypeURL {return false}
    if self.requestStreaming != other.requestStreaming {return false}
    if self.responseTypeURL != other.responseTypeURL {return false}
    if self.responseStreaming != other.responseStreaming {return false}
    if self.options != other.options {return false}
    if self.syntax != other.syntax {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Mixin: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "root"),
  ]

  func _protobuf_generated_isEqualTo(other: Google_Protobuf_Mixin) -> Bool {
    if self.name != other.name {return false}
    if self.root != other.root {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
