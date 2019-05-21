.class public final Lcom/android/camera/one/v2/core/FrameServerImpl;
.super Ljava/lang/Object;
.source "FrameServerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/FrameServerImpl$Session;
    }
.end annotation


# instance fields
.field private final cameraTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

.field private final requestProcessor:Lcom/android/camera/one/v2/core/FrameRequestProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameRequestProcessor;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->requestProcessor:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    .line 56
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->cameraTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameRequestProcessor;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->requestProcessor:Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    return-object v0
.end method


# virtual methods
.method public final synthetic createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 19
    .line 1063
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->cameraTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->acquire$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EH86URRC7D4IIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T1MORRJCLGM4R359HKN6T1R(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;I)Lcom/google/android/apps/camera/async/CloseableList;

    move-result-object v0

    .line 1064
    new-instance v1, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;-><init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V

    .line 19
    return-object v1
.end method

.method public final getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->cameraTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->greaterOrEqual(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method
