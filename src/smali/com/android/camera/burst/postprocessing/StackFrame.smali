.class final Lcom/android/camera/burst/postprocessing/StackFrame;
.super Ljava/lang/Object;
.source "StackFrame.java"


# instance fields
.field public final captureSession:Lcom/android/camera/session/StackedCaptureSession;

.field public final frameScore:F

.field public final isExtra:Z

.field public final isPrimary:Z

.field public final location:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionDirFrameFile:Ljava/io/File;

.field public final thumbnail:Lcom/google/android/libraries/smartburst/concurrency/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final timestamp:J


# direct methods
.method public constructor <init>(JFLcom/android/camera/session/StackedCaptureSession;Lcom/google/android/libraries/smartburst/concurrency/Result;ZZLcom/google/common/base/Optional;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lcom/android/camera/session/StackedCaptureSession;",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
            "<*>;>;ZZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->timestamp:J

    .line 41
    iput p3, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->frameScore:F

    .line 42
    iput-object p4, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->captureSession:Lcom/android/camera/session/StackedCaptureSession;

    .line 43
    iput-object p5, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->thumbnail:Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 44
    iput-boolean p6, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->isPrimary:Z

    .line 45
    iput-boolean p7, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->isExtra:Z

    .line 46
    iput-object p8, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->location:Lcom/google/common/base/Optional;

    .line 47
    iput-object p9, p0, Lcom/android/camera/burst/postprocessing/StackFrame;->sessionDirFrameFile:Ljava/io/File;

    .line 48
    return-void
.end method
