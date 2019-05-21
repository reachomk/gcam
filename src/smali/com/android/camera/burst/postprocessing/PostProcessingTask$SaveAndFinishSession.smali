.class final Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;
.super Ljava/lang/Object;
.source "PostProcessingTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/PostProcessingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveAndFinishSession"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final handle:Lcom/google/android/libraries/smartburst/media/BitmapLoader;

.field private final session:Lcom/android/camera/session/StackedCaptureSession;

.field private final timestamp:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/StackedCaptureSession;Ljava/io/File;Ljava/lang/String;JLcom/google/android/libraries/smartburst/media/BitmapLoader;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->file:Ljava/io/File;

    .line 341
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->session:Lcom/android/camera/session/StackedCaptureSession;

    .line 342
    iput-wide p4, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->timestamp:J

    .line 343
    iput-object p3, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->title:Ljava/lang/String;

    .line 344
    iput-object p6, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->handle:Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    .line 345
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    .line 1349
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->session:Lcom/android/camera/session/StackedCaptureSession;

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->handle:Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    invoke-interface {v3}, Lcom/google/android/libraries/smartburst/media/BitmapLoader;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->handle:Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    invoke-interface {v4}, Lcom/google/android/libraries/smartburst/media/BitmapLoader;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/camera/burst/postprocessing/PostProcessingTask$SaveAndFinishSession;->timestamp:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/session/StackedCaptureSession;->saveAndFinish(Ljava/io/File;Ljava/lang/String;IIIJ)Lcom/google/common/base/Optional;

    .line 1350
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/Empty;->INSTANCE:Lcom/google/android/libraries/smartburst/utils/Empty;

    .line 327
    return-object v0
.end method
