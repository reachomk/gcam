.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$TicketHandle;
.super Ljava/lang/Object;
.source "RefCountedTicketCreator.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TicketHandle"
.end annotation


# instance fields
.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;)V
    .locals 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$TicketHandle;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$TicketHandle;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$TicketHandle;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$TicketHandle;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$TicketHandle;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;)V

    goto :goto_0
.end method
