.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;
.super Ljava/lang/Object;
.source "InfiniteTicketPool.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TicketImpl"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;)V
    .locals 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method
