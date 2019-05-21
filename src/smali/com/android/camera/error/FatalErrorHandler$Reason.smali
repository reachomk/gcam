.class public final enum Lcom/android/camera/error/FatalErrorHandler$Reason;
.super Ljava/lang/Enum;
.source "FatalErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/error/FatalErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/error/FatalErrorHandler$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/error/FatalErrorHandler$Reason;

.field public static final enum CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/error/FatalErrorHandler$Reason;

.field private static enum CAMERA_HAL_FAILED:Lcom/android/camera/error/FatalErrorHandler$Reason;

.field public static final enum CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/error/FatalErrorHandler$Reason;

.field public static final enum MEDIA_RECORDER_FAILURE:Lcom/android/camera/error/FatalErrorHandler$Reason;

.field public static final enum MEDIA_STORAGE_FAILURE:Lcom/android/camera/error/FatalErrorHandler$Reason;


# instance fields
.field private final dialogMsgId:I

.field private final feedbackMsgId:I

.field private final finishActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const v3, 0x7f0a008d

    const/4 v2, 0x0

    const v4, 0x7f0a01f3

    const/4 v5, 0x1

    .line 22
    new-instance v0, Lcom/android/camera/error/FatalErrorHandler$Reason;

    const-string v1, "CANNOT_CONNECT_TO_CAMERA"

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/error/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/android/camera/error/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/error/FatalErrorHandler$Reason;

    .line 24
    new-instance v6, Lcom/android/camera/error/FatalErrorHandler$Reason;

    const-string v7, "CAMERA_HAL_FAILED"

    move v8, v5

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/error/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/error/FatalErrorHandler$Reason;->CAMERA_HAL_FAILED:Lcom/android/camera/error/FatalErrorHandler$Reason;

    .line 26
    new-instance v6, Lcom/android/camera/error/FatalErrorHandler$Reason;

    const-string v7, "CAMERA_DISABLED_BY_SECURITY_POLICY"

    const v9, 0x7f0a008e

    move v8, v12

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/error/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/error/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/error/FatalErrorHandler$Reason;

    .line 28
    new-instance v6, Lcom/android/camera/error/FatalErrorHandler$Reason;

    const-string v7, "MEDIA_STORAGE_FAILURE"

    const/4 v8, 0x3

    const v9, 0x7f0a008f

    const v10, 0x7f0a01f4

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/error/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/error/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/android/camera/error/FatalErrorHandler$Reason;

    .line 30
    new-instance v6, Lcom/android/camera/error/FatalErrorHandler$Reason;

    const-string v7, "MEDIA_RECORDER_FAILURE"

    const/4 v8, 0x4

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/error/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/error/FatalErrorHandler$Reason;->MEDIA_RECORDER_FAILURE:Lcom/android/camera/error/FatalErrorHandler$Reason;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/error/FatalErrorHandler$Reason;

    sget-object v1, Lcom/android/camera/error/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/error/FatalErrorHandler$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/error/FatalErrorHandler$Reason;->CAMERA_HAL_FAILED:Lcom/android/camera/error/FatalErrorHandler$Reason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/error/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/error/FatalErrorHandler$Reason;

    aput-object v1, v0, v12

    const/4 v1, 0x3

    sget-object v2, Lcom/android/camera/error/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/android/camera/error/FatalErrorHandler$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/camera/error/FatalErrorHandler$Reason;->MEDIA_RECORDER_FAILURE:Lcom/android/camera/error/FatalErrorHandler$Reason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/error/FatalErrorHandler$Reason;->$VALUES:[Lcom/android/camera/error/FatalErrorHandler$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/android/camera/error/FatalErrorHandler$Reason;->dialogMsgId:I

    .line 52
    iput p4, p0, Lcom/android/camera/error/FatalErrorHandler$Reason;->feedbackMsgId:I

    .line 53
    iput-boolean p5, p0, Lcom/android/camera/error/FatalErrorHandler$Reason;->finishActivity:Z

    .line 54
    return-void
.end method

.method public static values()[Lcom/android/camera/error/FatalErrorHandler$Reason;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/error/FatalErrorHandler$Reason;->$VALUES:[Lcom/android/camera/error/FatalErrorHandler$Reason;

    invoke-virtual {v0}, [Lcom/android/camera/error/FatalErrorHandler$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/error/FatalErrorHandler$Reason;

    return-object v0
.end method


# virtual methods
.method public final doesFinishActivity()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/error/FatalErrorHandler$Reason;->finishActivity:Z

    return v0
.end method

.method public final getDialogMsgId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/error/FatalErrorHandler$Reason;->dialogMsgId:I

    return v0
.end method

.method public final getFeedbackMsgId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/error/FatalErrorHandler$Reason;->feedbackMsgId:I

    return v0
.end method
