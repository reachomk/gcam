.class final Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;
.super Ljava/lang/Object;
.source "TrackingBitmapAllocator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/media/BitmapHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackedBitmapHandle"
.end annotation


# instance fields
.field private final mAllocTimeNs:J

.field private final mAllocType:Ljava/lang/String;

.field private final mBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

.field private volatile mCloseTimeNs:J

.field private final mCloseType:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mLabel:Ljava/lang/String;

.field private final mSizeInBytes:I

.field private final mTrackedBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/smartburst/media/BitmapHandle;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mCloseType:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mCloseTimeNs:J

    .line 52
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mLabel:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mAllocType:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mAllocTimeNs:J

    .line 56
    invoke-interface {p3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->sizeInBytes()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mSizeInBytes:I

    .line 57
    invoke-interface {p3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mWidth:I

    .line 58
    invoke-interface {p3}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mHeight:I

    .line 59
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mTrackedBitmaps:Ljava/util/Set;

    .line 60
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mTrackedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mTrackedBitmaps:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final setCloseType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mCloseType:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mCloseTimeNs:J

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "CLOSE"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->setCloseType(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    .line 119
    return-void
.end method

.method public final synthetic detach()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    .line 1095
    const-string v0, "DETACH"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->setCloseType(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->detach()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 35
    return-object v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    .line 2088
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 35
    return-object v0
.end method

.method public final getAllocTimeNs()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mAllocTimeNs:J

    return-wide v0
.end method

.method public final getAllocType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mAllocType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCloseTimeNs()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mCloseTimeNs:J

    return-wide v0
.end method

.method public final getCloseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mCloseType:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mHeight:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mWidth:I

    return v0
.end method

.method public final sizeInBytes()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;->mSizeInBytes:I

    return v0
.end method
