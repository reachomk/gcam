.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;
.super Ljava/lang/Object;
.source "FiniteTicketPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Waiter"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private final promise:Lcom/google/android/apps/camera/async/SettableCloseableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/SettableCloseableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;>;"
        }
    .end annotation
.end field

.field private result:Lcom/google/android/apps/camera/async/CloseableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

.field private final ticketsRequested:I


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;I)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->ticketsRequested:I

    .line 54
    invoke-static {}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->create()Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->promise:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;IB)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->exception:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Lcom/google/android/apps/camera/async/CloseableList;)Lcom/google/android/apps/camera/async/CloseableList;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->result:Lcom/google/android/apps/camera/async/CloseableList;

    return-object p1
.end method


# virtual methods
.method final getPromise()Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->promise:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;Lcom/google/android/apps/camera/async/CloseableFuture;)V

    return-object v0
.end method

.method final getTicketsRequested()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->ticketsRequested:I

    return v0
.end method

.method final publishResult()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->result:Lcom/google/android/apps/camera/async/CloseableList;

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->promise:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 84
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->result:Lcom/google/android/apps/camera/async/CloseableList;

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->exception:Ljava/lang/Exception;

    if-nez v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->promise:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool$Waiter;->result:Lcom/google/android/apps/camera/async/CloseableList;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 83
    goto :goto_2

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No result set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
