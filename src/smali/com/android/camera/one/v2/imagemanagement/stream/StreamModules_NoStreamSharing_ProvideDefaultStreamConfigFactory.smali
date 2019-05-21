.class public final Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;
.super Ljava/lang/Object;
.source "StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory.java"

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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;->surfacesProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;->asyncSurfacesProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
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
            ">;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;->surfacesProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/StreamModules_NoStreamSharing_ProvideDefaultStreamConfigFactory;->asyncSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1029
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideDefaultStreamConfig(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 10
    return-object v0
.end method
