.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;
.super Ljava/lang/Object;
.source "ResidualTicketPoolImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnregisterTicketHolder"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final holder:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;)V
    .locals 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->holder:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->holder:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Lcom/google/android/apps/camera/async/SettableObservable;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$UnregisterTicketHolder;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Lcom/google/android/apps/camera/async/SettableObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
