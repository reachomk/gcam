.class public final Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;
.super Ljava/lang/Object;
.source "JoinedTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;
    }
.end annotation


# instance fields
.field private final availableTicketCount:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final parents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 57
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->parents:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 61
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v1}, Lcom/google/android/apps/camera/async/Observables;->min(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/Observable;

    .line 65
    return-void
.end method


# virtual methods
.method public final acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 72
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v1}, Lcom/google/android/apps/camera/async/CloseableFutures;->allAsList(Ljava/util/List;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$1;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$1;-><init>(I)V

    .line 74
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/CloseableFutures;->transform(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3

    .prologue
    .line 117
    new-instance v1, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 119
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    goto :goto_0

    .line 121
    :cond_0
    return-object v1
.end method

.method public final getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->availableTicketCount:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 99
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v1

    .line 100
    if-nez v1, :cond_3

    .line 102
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 103
    invoke-interface {v2}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_2
    if-eqz v5, :cond_0

    if-eqz v3, :cond_6

    :try_start_2
    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_3
    throw v1

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    :cond_2
    move-object v1, v3

    .line 111
    :goto_4
    return-object v1

    .line 107
    :cond_3
    :try_start_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 109
    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 111
    :cond_5
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;

    invoke-direct {v1, v2, v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;-><init>(Ljava/util/List;B)V

    goto :goto_4

    .line 109
    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_3
.end method
