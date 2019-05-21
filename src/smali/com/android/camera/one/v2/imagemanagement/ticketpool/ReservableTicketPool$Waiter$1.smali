.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter$1;
.super Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;
.source "ReservableTicketPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->getParentTickets()Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ForwardingCloseableFuture",
        "<",
        "Lcom/google/android/apps/camera/async/CloseableList",
        "<",
        "Lcom/android/camera/audio/SingleUseSoundPlayer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;Lcom/google/android/apps/camera/async/CloseableFuture;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;-><init>(Lcom/google/android/apps/camera/async/CloseableFuture;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->close()V

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$Waiter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
