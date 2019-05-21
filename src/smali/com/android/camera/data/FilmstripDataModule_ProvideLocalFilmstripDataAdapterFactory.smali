.class public final Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;
.super Ljava/lang/Object;
.source "FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory.java"

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
.field private final cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/CameraFilmstripDataAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final fixedLastProxyAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/FixedLastProxyAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final isSecureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/CameraFilmstripDataAdapter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/FixedLastProxyAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;->isSecureProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;->cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;->fixedLastProxyAdapterProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 1031
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;->isSecureProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;->cameraFilmstripDataAdapterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideLocalFilmstripDataAdapterFactory;->fixedLastProxyAdapterProvider:Ljavax/inject/Provider;

    .line 1061
    if-eqz v0, :cond_0

    .line 1062
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 1032
    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1031
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 8
    return-object v0

    .line 1064
    :cond_0
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    goto :goto_0
.end method
