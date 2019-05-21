.class final Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand$1;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ConvergedImageCaptureCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->createRequestForBurst(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand$1;->this$0:Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand$1;->this$0:Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGRFDPR6ASJ7CLI4IRB1CTIK6OBGEHQN4PA3DTMMQOBECGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFE1K6UT3F5T4MQOB7CL1M2S3KELP6AL38E9IN6Q3FDHI3M___(Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;)Lcom/google/common/collect/Serialization;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/Serialization;->tryReserveImagesForCapture(J)J

    .line 189
    return-void
.end method
