.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;
.super Ljava/lang/Object;
.source "FiniteTicketPool.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TicketImpl"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)V
    .locals 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)V

    .line 43
    :cond_0
    return-void
.end method
