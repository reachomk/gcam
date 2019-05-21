.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;
.super Ljava/lang/Object;
.source "TicketProvider.java"


# virtual methods
.method public abstract acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
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
.end method

.method public abstract beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;
.end method

.method public abstract getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
.end method
