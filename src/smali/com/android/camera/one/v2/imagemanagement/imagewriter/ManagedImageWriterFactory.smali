.class public final Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;
.super Ljava/lang/Object;
.source "ManagedImageWriterFactory.java"


# instance fields
.field private final handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

.field private final imageCopier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UTBKD5M2UIBDC5JMAGRFE1KMASHR:Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final logger:Lcom/android/camera/debug/Logger$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/libraries/smartburst/training/MetadataSerializer;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

    .line 32
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 33
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    .line 34
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->imageCopier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UTBKD5M2UIBDC5JMAGRFE1KMASHR:Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/android/camera/debug/Logger$Factory;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/google/android/apps/camera/async/HandlerFactory;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBNE9KN8PBI5T6M2RJ1CTIM8IBDC5JMALRID5Q6ASI6C5HN8RRIF4TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TQN8QBC5T4MQOB7CL1MUS39CLP3M___(Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/google/android/libraries/smartburst/training/MetadataSerializer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;->imageCopier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UTBKD5M2UIBDC5JMAGRFE1KMASHR:Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    return-object v0
.end method


# virtual methods
.method public final createCopyingManagedImageWriter(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;I)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;",
            "I)",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;I)V

    .line 42
    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;

    invoke-direct {v1, v0, p3}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    return-object v1
.end method
