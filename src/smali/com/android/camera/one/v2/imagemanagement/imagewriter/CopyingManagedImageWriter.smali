.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;
.super Ljava/lang/Object;
.source "CopyingManagedImageWriter.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;,
        Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;
    }
.end annotation


# instance fields
.field private final imageCopier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UTBKD5M2UIBDC5JMAGRFE1KMASHR:Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

.field private final imageWriter:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

.field private final imageWriterCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

.field private final inFlightImages:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/libraries/smartburst/training/MetadataSerializer;)V
    .locals 3

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriter:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    .line 179
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageCopier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UTBKD5M2UIBDC5JMAGRFE1KMASHR:Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    .line 180
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriter:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$ImageListener;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;B)V

    const-string v2, "CopyingManagedImageWriter.ImageListener"

    .line 182
    invoke-static {p3, v2}, Lcom/google/android/apps/camera/async/HandlerFactory;->create(Lcom/google/android/apps/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v2

    .line 180
    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V

    .line 183
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->inFlightImages:Ljava/util/concurrent/BlockingQueue;

    .line 184
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriter:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->getMaxImages()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;-><init>(I)V

    invoke-virtual {p3, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriterCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriter:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBNE9KN8PBI5T1MUS3PD5N6EJB1DPGMEPB495MM2PR5ATP6IT35E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TQN8QBC5T4MQOB7CL1MUS39CLP3M___(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Lcom/google/android/libraries/smartburst/training/MetadataSerializer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageCopier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UTBKD5M2UIBDC5JMAGRFE1KMASHR:Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->inFlightImages:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;
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
    .line 219
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriterCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxImages()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriter:Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->getMaxImages()I

    move-result v0

    return v0
.end method

.method public final reserveImage(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->imageWriterCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    .line 196
    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;->acquireFutureTickets(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LoggingImageWriter$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/CloseableFutures;->transform(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    return-object v0
.end method
