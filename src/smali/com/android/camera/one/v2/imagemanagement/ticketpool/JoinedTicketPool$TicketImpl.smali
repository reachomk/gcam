.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;
.super Ljava/lang/Object;
.source "JoinedTicketPool.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TicketImpl"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final subTickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;->subTickets:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;->subTickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 48
    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_0
.end method
