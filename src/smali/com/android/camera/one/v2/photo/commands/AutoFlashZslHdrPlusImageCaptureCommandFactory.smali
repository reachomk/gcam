.class public final Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;
.super Ljava/lang/Object;
.source "AutoFlashZslHdrPlusImageCaptureCommandFactory.java"


# instance fields
.field private final captureMode:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final hdrPlusTorchCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final hdrPlusZslCommandFactory:Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;

.field private final logFactory:Lcom/android/camera/debug/Logger$Factory;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;",
            "Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/hdrplus/HdrPlusTorchImageCaptureCommand;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->logFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 32
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->captureMode:Lcom/google/android/apps/camera/async/Observable;

    .line 33
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->hdrPlusZslCommandFactory:Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;

    .line 34
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p4, v1, v2}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->hdrPlusCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 38
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, p5, v1, v2}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->hdrPlusTorchCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 42
    return-void
.end method


# virtual methods
.method public final create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;II)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 9

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->hdrPlusZslCommandFactory:Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;

    .line 55
    invoke-virtual {v0, p4, p5, p3}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->create(IILcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v6

    .line 57
    new-instance v7, Lcom/android/camera/one/v2/photo/commands/CommandSwitcher;

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->logFactory:Lcom/android/camera/debug/Logger$Factory;

    new-instance v0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusSelector;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->captureMode:Lcom/google/android/apps/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->hdrPlusCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;->hdrPlusTorchCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusSelector;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    invoke-direct {v7, v8, v0}, Lcom/android/camera/one/v2/photo/commands/CommandSwitcher;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/Observable;)V

    return-object v7
.end method
