.class final Lcom/android/camera/burst/TicketCounter$1;
.super Ljava/lang/Object;
.source "TicketCounter.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/TicketCounter;->acquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/burst/TicketCounter;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/TicketCounter;)V
    .locals 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/burst/TicketCounter$1;->this$0:Lcom/android/camera/burst/TicketCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/burst/TicketCounter$1;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/burst/TicketCounter$1;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/burst/TicketCounter$1;->this$0:Lcom/android/camera/burst/TicketCounter;

    invoke-static {v0}, Lcom/android/camera/burst/TicketCounter;->access$000(Lcom/android/camera/burst/TicketCounter;)V

    .line 36
    :cond_0
    return-void
.end method
