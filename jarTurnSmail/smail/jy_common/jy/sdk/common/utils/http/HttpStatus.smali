.class public final enum Ljy/sdk/common/utils/http/HttpStatus;
.super Ljava/lang/Enum;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/http/HttpStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Accepted:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Ambiguous:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum BadGateway:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum BadRequest:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Conflict:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Continue:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Created:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum ExpectationFailed:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Forbidden:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Found:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum GatewayTimeout:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Gone:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum HttpVersionNotSupported:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum InternalServerError:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum LengthRequired:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum MethodNotAllowed:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Moved:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum MovedPermanently:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum MultipleChoices:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NoContent:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NonAuthoritativeInformation:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NotAcceptable:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NotFound:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NotImplemented:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum NotModified:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum OK:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum PartialContent:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum PaymentRequired:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum PreconditionFailed:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum ProxyAuthenticationRequired:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Redirect:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum RedirectKeepVerb:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum RedirectMethod:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum RequestEntityTooLarge:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum RequestTimeout:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum RequestUriTooLong:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum RequestedRangeNotSatisfiable:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum ResetContent:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum SeeOther:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum ServiceUnavailable:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum SwitchingProtocols:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum TemporaryRedirect:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Unauthorized:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum UnsupportedMediaType:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum Unused:Ljy/sdk/common/utils/http/HttpStatus;

.field public static final enum UseProxy:Ljy/sdk/common/utils/http/HttpStatus;


# instance fields
.field private Code:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 11
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NotAccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    .line 12
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Continue"

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v4}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Continue:Ljy/sdk/common/utils/http/HttpStatus;

    .line 13
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "SwitchingProtocols"

    const/4 v4, 0x2

    const/16 v5, 0x65

    invoke-direct {v0, v1, v4, v5}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->SwitchingProtocols:Ljy/sdk/common/utils/http/HttpStatus;

    .line 14
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "OK"

    const/4 v5, 0x3

    const/16 v6, 0xc8

    invoke-direct {v0, v1, v5, v6}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->OK:Ljy/sdk/common/utils/http/HttpStatus;

    .line 15
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Created"

    const/4 v6, 0x4

    const/16 v7, 0xc9

    invoke-direct {v0, v1, v6, v7}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Created:Ljy/sdk/common/utils/http/HttpStatus;

    .line 16
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Accepted"

    const/4 v7, 0x5

    const/16 v8, 0xca

    invoke-direct {v0, v1, v7, v8}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Accepted:Ljy/sdk/common/utils/http/HttpStatus;

    .line 17
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NonAuthoritativeInformation"

    const/4 v8, 0x6

    const/16 v9, 0xcb

    invoke-direct {v0, v1, v8, v9}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NonAuthoritativeInformation:Ljy/sdk/common/utils/http/HttpStatus;

    .line 18
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NoContent"

    const/4 v9, 0x7

    const/16 v10, 0xcc

    invoke-direct {v0, v1, v9, v10}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NoContent:Ljy/sdk/common/utils/http/HttpStatus;

    .line 19
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "ResetContent"

    const/16 v10, 0x8

    const/16 v11, 0xcd

    invoke-direct {v0, v1, v10, v11}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->ResetContent:Ljy/sdk/common/utils/http/HttpStatus;

    .line 20
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "PartialContent"

    const/16 v11, 0x9

    const/16 v12, 0xce

    invoke-direct {v0, v1, v11, v12}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->PartialContent:Ljy/sdk/common/utils/http/HttpStatus;

    .line 21
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "MultipleChoices"

    const/16 v12, 0x12c

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v12}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->MultipleChoices:Ljy/sdk/common/utils/http/HttpStatus;

    .line 22
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Ambiguous"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v12}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Ambiguous:Ljy/sdk/common/utils/http/HttpStatus;

    .line 23
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "MovedPermanently"

    const/16 v12, 0x12d

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v12}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->MovedPermanently:Ljy/sdk/common/utils/http/HttpStatus;

    .line 24
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Moved"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v12}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Moved:Ljy/sdk/common/utils/http/HttpStatus;

    .line 25
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Found"

    const/16 v12, 0xe

    const/16 v15, 0x12e

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Found:Ljy/sdk/common/utils/http/HttpStatus;

    .line 26
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Redirect"

    const/16 v12, 0xf

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Redirect:Ljy/sdk/common/utils/http/HttpStatus;

    .line 27
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "SeeOther"

    const/16 v12, 0x10

    const/16 v15, 0x12f

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->SeeOther:Ljy/sdk/common/utils/http/HttpStatus;

    .line 28
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "RedirectMethod"

    const/16 v12, 0x11

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->RedirectMethod:Ljy/sdk/common/utils/http/HttpStatus;

    .line 29
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NotModified"

    const/16 v12, 0x12

    const/16 v15, 0x130

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NotModified:Ljy/sdk/common/utils/http/HttpStatus;

    .line 30
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "UseProxy"

    const/16 v12, 0x13

    const/16 v15, 0x131

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->UseProxy:Ljy/sdk/common/utils/http/HttpStatus;

    .line 31
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Unused"

    const/16 v12, 0x14

    const/16 v15, 0x132

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Unused:Ljy/sdk/common/utils/http/HttpStatus;

    .line 32
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "TemporaryRedirect"

    const/16 v12, 0x15

    const/16 v15, 0x133

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->TemporaryRedirect:Ljy/sdk/common/utils/http/HttpStatus;

    .line 33
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "RedirectKeepVerb"

    const/16 v12, 0x16

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->RedirectKeepVerb:Ljy/sdk/common/utils/http/HttpStatus;

    .line 34
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "BadRequest"

    const/16 v12, 0x17

    const/16 v15, 0x190

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->BadRequest:Ljy/sdk/common/utils/http/HttpStatus;

    .line 35
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Unauthorized"

    const/16 v12, 0x18

    const/16 v15, 0x191

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Unauthorized:Ljy/sdk/common/utils/http/HttpStatus;

    .line 36
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "PaymentRequired"

    const/16 v12, 0x19

    const/16 v15, 0x192

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->PaymentRequired:Ljy/sdk/common/utils/http/HttpStatus;

    .line 37
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Forbidden"

    const/16 v12, 0x1a

    const/16 v15, 0x193

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Forbidden:Ljy/sdk/common/utils/http/HttpStatus;

    .line 38
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NotFound"

    const/16 v12, 0x1b

    const/16 v15, 0x194

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NotFound:Ljy/sdk/common/utils/http/HttpStatus;

    .line 39
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "MethodNotAllowed"

    const/16 v12, 0x1c

    const/16 v15, 0x195

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->MethodNotAllowed:Ljy/sdk/common/utils/http/HttpStatus;

    .line 40
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NotAcceptable"

    const/16 v12, 0x1d

    const/16 v15, 0x196

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NotAcceptable:Ljy/sdk/common/utils/http/HttpStatus;

    .line 41
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "ProxyAuthenticationRequired"

    const/16 v12, 0x1e

    const/16 v15, 0x197

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->ProxyAuthenticationRequired:Ljy/sdk/common/utils/http/HttpStatus;

    .line 42
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "RequestTimeout"

    const/16 v12, 0x1f

    const/16 v15, 0x198

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->RequestTimeout:Ljy/sdk/common/utils/http/HttpStatus;

    .line 43
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Conflict"

    const/16 v12, 0x20

    const/16 v15, 0x199

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Conflict:Ljy/sdk/common/utils/http/HttpStatus;

    .line 44
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "Gone"

    const/16 v12, 0x21

    const/16 v15, 0x19a

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->Gone:Ljy/sdk/common/utils/http/HttpStatus;

    .line 45
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "LengthRequired"

    const/16 v12, 0x22

    const/16 v15, 0x19b

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->LengthRequired:Ljy/sdk/common/utils/http/HttpStatus;

    .line 46
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "PreconditionFailed"

    const/16 v12, 0x23

    const/16 v15, 0x19c

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->PreconditionFailed:Ljy/sdk/common/utils/http/HttpStatus;

    .line 47
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "RequestEntityTooLarge"

    const/16 v12, 0x24

    const/16 v15, 0x19d

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->RequestEntityTooLarge:Ljy/sdk/common/utils/http/HttpStatus;

    .line 48
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "RequestUriTooLong"

    const/16 v12, 0x25

    const/16 v15, 0x19e

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->RequestUriTooLong:Ljy/sdk/common/utils/http/HttpStatus;

    .line 49
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "UnsupportedMediaType"

    const/16 v12, 0x26

    const/16 v15, 0x19f

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->UnsupportedMediaType:Ljy/sdk/common/utils/http/HttpStatus;

    .line 50
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "RequestedRangeNotSatisfiable"

    const/16 v12, 0x27

    const/16 v15, 0x1a0

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->RequestedRangeNotSatisfiable:Ljy/sdk/common/utils/http/HttpStatus;

    .line 51
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "ExpectationFailed"

    const/16 v12, 0x28

    const/16 v15, 0x1a1

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->ExpectationFailed:Ljy/sdk/common/utils/http/HttpStatus;

    .line 52
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "InternalServerError"

    const/16 v12, 0x29

    const/16 v15, 0x1f4

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->InternalServerError:Ljy/sdk/common/utils/http/HttpStatus;

    .line 53
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "NotImplemented"

    const/16 v12, 0x2a

    const/16 v15, 0x1f5

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->NotImplemented:Ljy/sdk/common/utils/http/HttpStatus;

    .line 54
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "BadGateway"

    const/16 v12, 0x2b

    const/16 v15, 0x1f6

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->BadGateway:Ljy/sdk/common/utils/http/HttpStatus;

    .line 55
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "ServiceUnavailable"

    const/16 v12, 0x2c

    const/16 v15, 0x1f7

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->ServiceUnavailable:Ljy/sdk/common/utils/http/HttpStatus;

    .line 56
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "GatewayTimeout"

    const/16 v12, 0x2d

    const/16 v15, 0x1f8

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->GatewayTimeout:Ljy/sdk/common/utils/http/HttpStatus;

    .line 57
    new-instance v0, Ljy/sdk/common/utils/http/HttpStatus;

    const-string v1, "HttpVersionNotSupported"

    const/16 v12, 0x2e

    const/16 v15, 0x1f9

    invoke-direct {v0, v1, v12, v15}, Ljy/sdk/common/utils/http/HttpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->HttpVersionNotSupported:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v0, 0x2f

    .line 9
    new-array v0, v0, [Ljy/sdk/common/utils/http/HttpStatus;

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Continue:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->SwitchingProtocols:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v4

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->OK:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v5

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Created:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v6

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Accepted:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v7

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NonAuthoritativeInformation:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v8

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NoContent:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v9

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->ResetContent:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v10

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->PartialContent:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v11

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->MultipleChoices:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v13

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Ambiguous:Ljy/sdk/common/utils/http/HttpStatus;

    aput-object v1, v0, v14

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->MovedPermanently:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Moved:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Found:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Redirect:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->SeeOther:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->RedirectMethod:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NotModified:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->UseProxy:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Unused:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->TemporaryRedirect:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->RedirectKeepVerb:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->BadRequest:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Unauthorized:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->PaymentRequired:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Forbidden:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NotFound:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->MethodNotAllowed:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NotAcceptable:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->ProxyAuthenticationRequired:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->RequestTimeout:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Conflict:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->Gone:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->LengthRequired:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->PreconditionFailed:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->RequestEntityTooLarge:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->RequestUriTooLong:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->UnsupportedMediaType:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->RequestedRangeNotSatisfiable:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->ExpectationFailed:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->InternalServerError:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->NotImplemented:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->BadGateway:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->ServiceUnavailable:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->GatewayTimeout:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpStatus;->HttpVersionNotSupported:Ljy/sdk/common/utils/http/HttpStatus;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sput-object v0, Ljy/sdk/common/utils/http/HttpStatus;->$VALUES:[Ljy/sdk/common/utils/http/HttpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Ljy/sdk/common/utils/http/HttpStatus;->Code:I

    return-void
.end method

.method public static valueOf(I)Ljy/sdk/common/utils/http/HttpStatus;
    .registers 1

    if-eqz p0, :cond_8e

    packed-switch p0, :pswitch_data_92

    packed-switch p0, :pswitch_data_9a

    packed-switch p0, :pswitch_data_ac

    packed-switch p0, :pswitch_data_c0

    packed-switch p0, :pswitch_data_e8

    const/4 p0, 0x0

    return-object p0

    .line 154
    :pswitch_13
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->HttpVersionNotSupported:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 152
    :pswitch_16
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->GatewayTimeout:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 150
    :pswitch_19
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->ServiceUnavailable:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 148
    :pswitch_1c
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->BadGateway:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 146
    :pswitch_1f
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NotImplemented:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 144
    :pswitch_22
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->InternalServerError:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 142
    :pswitch_25
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->ExpectationFailed:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 140
    :pswitch_28
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->RequestedRangeNotSatisfiable:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 138
    :pswitch_2b
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->UnsupportedMediaType:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 136
    :pswitch_2e
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->RequestUriTooLong:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 134
    :pswitch_31
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->RequestEntityTooLarge:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 132
    :pswitch_34
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->PreconditionFailed:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 130
    :pswitch_37
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->LengthRequired:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 128
    :pswitch_3a
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Gone:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 126
    :pswitch_3d
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Conflict:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 124
    :pswitch_40
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->RequestTimeout:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 122
    :pswitch_43
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->ProxyAuthenticationRequired:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 120
    :pswitch_46
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NotAcceptable:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 118
    :pswitch_49
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->MethodNotAllowed:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 116
    :pswitch_4c
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NotFound:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 114
    :pswitch_4f
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Forbidden:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 112
    :pswitch_52
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->PaymentRequired:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 110
    :pswitch_55
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Unauthorized:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 108
    :pswitch_58
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->BadRequest:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 106
    :pswitch_5b
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->TemporaryRedirect:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 104
    :pswitch_5e
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Unused:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 102
    :pswitch_61
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->UseProxy:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 100
    :pswitch_64
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NotModified:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 98
    :pswitch_67
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->SeeOther:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 96
    :pswitch_6a
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Found:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 94
    :pswitch_6d
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->MovedPermanently:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 92
    :pswitch_70
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->MultipleChoices:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 90
    :pswitch_73
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->PartialContent:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 88
    :pswitch_76
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->ResetContent:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 86
    :pswitch_79
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NoContent:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 84
    :pswitch_7c
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NonAuthoritativeInformation:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 82
    :pswitch_7f
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Accepted:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 80
    :pswitch_82
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Created:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 78
    :pswitch_85
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->OK:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 76
    :pswitch_88
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->SwitchingProtocols:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 74
    :pswitch_8b
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->Continue:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    .line 72
    :cond_8e
    sget-object p0, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0

    nop

    :pswitch_data_92
    .packed-switch 0x64
        :pswitch_8b
        :pswitch_88
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0xc8
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x12c
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x190
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x1f4
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/http/HttpStatus;
    .registers 2

    .line 9
    const-class v0, Ljy/sdk/common/utils/http/HttpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/http/HttpStatus;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/http/HttpStatus;
    .registers 1

    .line 9
    sget-object v0, Ljy/sdk/common/utils/http/HttpStatus;->$VALUES:[Ljy/sdk/common/utils/http/HttpStatus;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/http/HttpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/http/HttpStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 66
    iget v0, p0, Ljy/sdk/common/utils/http/HttpStatus;->Code:I

    return v0
.end method
