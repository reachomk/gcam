.class final Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;
.super Ljava/lang/Object;
.source "CaptureProgressImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiExposureCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/android/camera/one/OneCamera$PictureCallback;

.field private final exposureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final numFrames:I

.field final synthetic this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/google/android/apps/camera/async/MainThread;I)V
    .locals 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->this$0:Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 35
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 36
    iput p4, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->numFrames:I

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->exposureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/google/android/apps/camera/async/MainThread;IB)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/google/android/apps/camera/async/MainThread;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->exposureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->numFrames:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)Lcom/android/camera/one/OneCamera$PictureCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    return-object v0
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 26
    .line 1042
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->exposureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1043
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback$1;-><init>(Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl$MultiExposureCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method
