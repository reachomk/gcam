.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"

# interfaces
.implements Lcom/android/camera/audio/SingleUseSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TicketImpl"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final parentTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->parentTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$300(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$400(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$200(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->parentTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$600(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)Lcom/google/android/apps/camera/async/SettableObservable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$500(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->access$700(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)V

    .line 121
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool$TicketImpl;->parentTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
