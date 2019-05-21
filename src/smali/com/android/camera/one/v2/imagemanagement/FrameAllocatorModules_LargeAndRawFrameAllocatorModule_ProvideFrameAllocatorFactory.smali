.class public final Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;
.super Ljava/lang/Object;
.source "FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory.java"

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
.field private final largeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UHJIC5MMAGBCDHNM6OBKDTP4QRR4ELM6ASP49HGN4PR585N68KJ1ET374OBDCL0MOR3FCDGN8RRI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;

.field private final rawProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UHJIC5MMAGBCDHNM6OBKDTP4QRR4ELM6ASP49HGN4PR585N68KJ1ET374OBDCL0MOR3FCDGN8RRI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;

    .line 26
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;->largeProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;->rawProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQ6E9GMQPA1DHM6UOR1EHNN4JBFCHQMOPBJ4H662SJ7CL0MSP2IC5RKCSJ1DLIK2R3CDTHM2T3FE96MUP3LDHIJMJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;-><init>(Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1033
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UHJIC5MMAGBCDHNM6OBKDTP4QRR4ELM6ASP49HGN4PR585N68KJ1ET374OBDCL0MOR3FCDGN8RRI9LNM8TBCCKTG____:Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;->largeProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/FrameAllocatorModules_LargeAndRawFrameAllocatorModule_ProvideFrameAllocatorFactory;->rawProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->provideFrameAllocator(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 9
    return-object v0
.end method
