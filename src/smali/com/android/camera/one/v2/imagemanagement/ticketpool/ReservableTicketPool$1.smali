.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$1;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/apps/camera/async/CloseableList",
        "<",
        "Lcom/android/camera/audio/SingleUseSoundPlayer;",
        ">;",
        "Lcom/google/android/apps/camera/async/CloseableList",
        "<",
        "Lcom/android/camera/audio/SingleUseSoundPlayer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 211
    check-cast p1, Lcom/google/android/apps/camera/async/CloseableList;

    .line 1215
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    new-instance v1, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 1217
    invoke-virtual {p1}, Lcom/google/android/apps/camera/async/CloseableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 1218
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    return-object v1
.end method
