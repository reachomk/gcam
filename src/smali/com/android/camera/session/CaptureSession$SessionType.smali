.class public final enum Lcom/android/camera/session/CaptureSession$SessionType;
.super Ljava/lang/Enum;
.source "CaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/session/CaptureSession$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum BURST:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum HDR_PLUS:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum HDR_PLUS_AUTO:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum IMAGE_INTENT:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum LENS_BLUR:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum LENS_BLUR_RERENDER:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum NORMAL:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum PHOTOSPHERE:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum RENDER_PHOTO:Lcom/android/camera/session/CaptureSession$SessionType;

.field public static final enum RENDER_VIDEO:Lcom/android/camera/session/CaptureSession$SessionType;

.field private static enum UNKNOWN:Lcom/android/camera/session/CaptureSession$SessionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->UNKNOWN:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 24
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->NORMAL:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 25
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "HDR_PLUS"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 26
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "HDR_PLUS_AUTO"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS_AUTO:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 27
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->BURST:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 28
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "PHOTOSPHERE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->PHOTOSPHERE:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 29
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "LENS_BLUR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->LENS_BLUR:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 30
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "LENS_BLUR_RERENDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->LENS_BLUR_RERENDER:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 31
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "RENDER_PHOTO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_PHOTO:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 32
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "IMAGE_INTENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->IMAGE_INTENT:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 33
    new-instance v0, Lcom/android/camera/session/CaptureSession$SessionType;

    const-string v1, "RENDER_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_VIDEO:Lcom/android/camera/session/CaptureSession$SessionType;

    .line 22
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/camera/session/CaptureSession$SessionType;

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->UNKNOWN:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->NORMAL:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->HDR_PLUS_AUTO:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/session/CaptureSession$SessionType;->BURST:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/session/CaptureSession$SessionType;->PHOTOSPHERE:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/session/CaptureSession$SessionType;->LENS_BLUR:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/session/CaptureSession$SessionType;->LENS_BLUR_RERENDER:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_PHOTO:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/session/CaptureSession$SessionType;->IMAGE_INTENT:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/session/CaptureSession$SessionType;->RENDER_VIDEO:Lcom/android/camera/session/CaptureSession$SessionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->$VALUES:[Lcom/android/camera/session/CaptureSession$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/session/CaptureSession$SessionType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->$VALUES:[Lcom/android/camera/session/CaptureSession$SessionType;

    invoke-virtual {v0}, [Lcom/android/camera/session/CaptureSession$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/session/CaptureSession$SessionType;

    return-object v0
.end method
