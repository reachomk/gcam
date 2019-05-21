.class public final Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;
.super Ljava/lang/Object;
.source "StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory.java"

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
.field private final asyncSurfacesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final largeSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final rawSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final surfacesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->surfacesProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->asyncSurfacesProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->largeSurfaceProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->rawSurfaceProvider:Ljavax/inject/Provider;

    .line 34
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1038
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->surfacesProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->asyncSurfacesProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->largeSurfaceProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_LargeRawStreamSharing_ProvideLargeRawStreamConfigFactory;->rawSurfaceProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 1039
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideLargeRawStreamConfig(Ljava/util/Set;Ljava/util/Set;Landroid/view/Surface;Landroid/view/Surface;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1038
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 10
    return-object v0
.end method
