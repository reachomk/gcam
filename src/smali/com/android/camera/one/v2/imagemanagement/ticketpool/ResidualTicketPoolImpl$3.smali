.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$3;
.super Ljava/lang/Object;
.source "ResidualTicketPoolImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$100(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$3;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$410(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)I

    .line 166
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
