.class public Lcom/android/camera/burst/FrameSaver$FrameSavingTask;
.super Ljava/lang/Object;
.source "FrameSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/FrameSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameSavingTask"
.end annotation


# instance fields
.field private final imageRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2065
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->imageRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 3064
    invoke-direct {p0}, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->imageRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    return-object v0
.end method

.method public setImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/camera/burst/FrameSaver$FrameSavingTask;->imageRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 1070
    if-eqz v0, :cond_0

    .line 1071
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 1072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Old image was not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_0
    return-void
.end method
