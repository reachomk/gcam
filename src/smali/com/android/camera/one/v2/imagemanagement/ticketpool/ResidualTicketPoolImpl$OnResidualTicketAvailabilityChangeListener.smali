.class final Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;
.super Ljava/lang/Object;
.source "ResidualTicketPoolImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnResidualTicketAvailabilityChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;->update$5166KOBMC4NMOOBECSNKIRJKCLJMASHR55B0____()V

    return-void
.end method

.method public final update$5166KOBMC4NMOOBECSNKIRJKCLJMASHR55B0____()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->beginTransaction()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    const/4 v1, 0x0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl$OnResidualTicketAvailabilityChangeListener;->this$0:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;->access$000(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 47
    :cond_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
