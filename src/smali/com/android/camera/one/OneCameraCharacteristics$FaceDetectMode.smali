.class public final enum Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;
.super Ljava/lang/Enum;
.source "OneCameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCameraCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceDetectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

.field public static final enum FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

.field public static final enum NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

.field public static final enum SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 28
    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 29
    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->$VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->$VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    return-object v0
.end method


# virtual methods
.method public final toCamera2Mode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    :pswitch_0
    return v0

    .line 38
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 40
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
