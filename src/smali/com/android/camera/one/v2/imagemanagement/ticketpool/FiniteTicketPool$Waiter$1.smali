.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;
.super Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;
.source "FiniteTicketPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->getPromise()Lcom/google/android/apps/camera/async/CloseableFuture;
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
.field private synthetic this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Lcom/google/android/apps/camera/async/CloseableFuture;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;-><init>(Lcom/google/android/apps/camera/async/CloseableFuture;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->close()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$400(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Lcom/google/android/apps/camera/async/SettableObservable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    iget-object v2, v2, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$500(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Z

    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;->this$1:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->access$400(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;)Lcom/google/android/apps/camera/async/SettableObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 70
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
