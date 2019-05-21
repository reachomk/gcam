.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;
.super Ljava/lang/Object;
.source "ReprocessingImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentlyProcessing"
.end annotation


# instance fields
.field private final metadataFuture:Lcom/android/camera/one/v2/photo/common/MetadataFuture;

.field private final outputFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method private constructor <init>(JLcom/android/camera/one/v2/photo/common/MetadataFuture;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/camera/one/v2/photo/common/MetadataFuture;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-wide p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->timestamp:J

    .line 345
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->metadataFuture:Lcom/android/camera/one/v2/photo/common/MetadataFuture;

    .line 346
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 347
    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;)Lcom/android/camera/one/v2/photo/common/MetadataFuture;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->metadataFuture:Lcom/android/camera/one/v2/photo/common/MetadataFuture;

    return-object v0
.end method

.method static synthetic access$700(JLcom/android/camera/one/v2/photo/common/MetadataFuture;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;
    .locals 2

    .prologue
    .line 336
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;->create(JLcom/android/camera/one/v2/photo/common/MetadataFuture;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;

    move-result-object v0

    return-object v0
.end method

.method private static create(JLcom/android/camera/one/v2/photo/common/MetadataFuture;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/camera/one/v2/photo/common/MetadataFuture;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;)",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver$CurrentlyProcessing;-><init>(JLcom/android/camera/one/v2/photo/common/MetadataFuture;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-object v0
.end method
