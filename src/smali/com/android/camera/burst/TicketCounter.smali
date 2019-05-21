.class public final Lcom/android/camera/burst/TicketCounter;
.super Lcom/google/android/apps/camera/async/ConcurrentState;
.source "TicketCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ConcurrentState",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/TicketCounter;->lock:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/TicketCounter;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/burst/TicketCounter;->decrement()V

    return-void
.end method

.method private final decrement()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/camera/burst/TicketCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/burst/TicketCounter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/burst/TicketCounter;->update(Ljava/lang/Object;)V

    .line 53
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final acquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 2

    .prologue
    .line 27
    .line 1041
    iget-object v1, p0, Lcom/android/camera/burst/TicketCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1042
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/burst/TicketCounter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1043
    add-int/lit8 v0, v0, 0x1

    .line 1044
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/burst/TicketCounter;->update(Ljava/lang/Object;)V

    .line 1045
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    new-instance v0, Lcom/android/camera/burst/TicketCounter$1;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/TicketCounter$1;-><init>(Lcom/android/camera/burst/TicketCounter;)V

    return-object v0

    .line 1045
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
