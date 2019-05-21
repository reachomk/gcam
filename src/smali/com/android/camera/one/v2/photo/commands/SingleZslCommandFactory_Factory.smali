.class public final Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;
.super Ljava/lang/Object;
.source "SingleZslCommandFactory_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final frameAllocatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;"
        }
    .end annotation
.end field

.field private final imageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final prefilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final thresholdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Serialization;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Serialization;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->frameAllocatorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->thresholdProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->prefilterProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 57
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Serialization;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 14
    .line 1061
    new-instance v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/trace/Trace;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/Logger$Factory;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->frameAllocatorProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->thresholdProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/Serialization;

    iget-object v7, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->prefilterProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory_Factory;->oneCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;-><init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/google/common/collect/Serialization;Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 14
    return-object v0
.end method
