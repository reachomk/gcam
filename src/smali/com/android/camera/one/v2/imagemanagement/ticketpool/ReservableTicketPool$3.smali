.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->reserveCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

.field private synthetic val$futureTickets:Lcom/google/android/apps/camera/async/CloseableFuture;

.field private synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$futureTickets:Lcom/google/android/apps/camera/async/CloseableFuture;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$futureTickets:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->remove()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/CloseableList;

    .line 293
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$1000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Ljava/util/Collection;)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$1100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$futureTickets:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 304
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$futureTickets:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$futureTickets:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v1}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$3;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
