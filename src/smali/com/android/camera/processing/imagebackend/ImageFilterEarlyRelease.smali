.class Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;
.super Ljava/lang/Object;
.source "ImageFilterEarlyRelease.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;
    }
.end annotation


# instance fields
.field private final closeImagesOnRelease:Z

.field private currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

.field private final filterTaskFactory:Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;

.field private final imageConsumerEarlyRelease:Lcom/android/camera/processing/imagebackend/ImageConsumer;

.field private final inputImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final settableFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageConsumer;Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;Z)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->inputImages:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->settableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->lock:Ljava/lang/Object;

    .line 45
    sget v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->WAITING_FOR_START$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 61
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->imageConsumerEarlyRelease:Lcom/android/camera/processing/imagebackend/ImageConsumer;

    .line 62
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->filterTaskFactory:Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;

    .line 63
    iput-boolean p3, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->closeImagesOnRelease:Z

    .line 64
    sget v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->WAITING_FOR_START$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->emitValue()V

    return-void
.end method

.method private final emitValue()V
    .locals 6

    .prologue
    .line 156
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    sget v1, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->inputImages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->imageConsumerEarlyRelease:Lcom/android/camera/processing/imagebackend/ImageConsumer;

    invoke-interface {v0}, Lcom/android/camera/processing/imagebackend/ImageConsumer;->getPendingImages()Ljava/util/Set;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->inputImages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 161
    iget-object v4, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->imageConsumerEarlyRelease:Lcom/android/camera/processing/imagebackend/ImageConsumer;

    iget-object v5, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v4, v5}, Lcom/android/camera/processing/imagebackend/ImageConsumer;->detachImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Z

    .line 163
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->settableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 171
    :goto_2
    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->settableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    sget v2, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->READY_FOR_SUBMISSION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    sget v2, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 138
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    sget v2, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    if-ne v0, v2, :cond_2

    .line 140
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_1
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_2
    :try_start_2
    sget v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 145
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->emitValue()V

    .line 148
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 74
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    sget v3, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->WAITING_FOR_START$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    sget v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->READY_FOR_SUBMISSION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    .line 81
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->settableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    monitor-exit v1

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    sget v4, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$CurrentState;->READY_FOR_SUBMISSION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQ9DLGMEPA6D5M78PBI8LGN4R3PA9IMOPB1EDII8GRLE9P6ARJKADQ62T357C______:I

    if-ne v2, v4, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 97
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->numImagesInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 100
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->inputImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;

    invoke-direct {v0, p0}, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease$1;-><init>(Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->imageConsumerEarlyRelease:Lcom/android/camera/processing/imagebackend/ImageConsumer;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->filterTaskFactory:Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;

    .line 117
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->build(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    move-result-object v2

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/camera/processing/imagebackend/ImageFilterEarlyRelease;->closeImagesOnRelease:Z

    .line 120
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 115
    invoke-interface {v1, v2, v4, v5, v0}, Lcom/android/camera/processing/imagebackend/ImageConsumer;->receiveImage$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTHMASRJD5N6EBR9DLGMEPB2C5HMMPBECGNKIRB1CTIL8RQGE9NM6PBJECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASHRB9D4OORFDKNMERRFCTM6ABR3DTMMQRRE5TH62SR55T7N0T39DTN62R1R55D0____(Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZLcom/google/common/base/Optional;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    .line 96
    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interrupt should NOT happen, because call is non-blocking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
