.class public final Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;
.super Ljava/lang/Object;
.source "FilmstripDataModule_ProvideVideoItemFactoryFactory.java"

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
.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final glideFilmstripManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;"
        }
    .end annotation
.end field

.field private final videoDataFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoDataFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/GlideFilmstripManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/VideoDataFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->glideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->storageProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->videoDataFactoryProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    .line 1044
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->glideFilmstripManagerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/GlideFilmstripManager;

    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->storageProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/storage/Storage;

    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule_ProvideVideoItemFactoryFactory;->videoDataFactoryProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/VideoDataFactory;

    .line 1051
    new-instance v0, Lcom/android/camera/data/VideoItemFactory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/VideoItemFactory;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/storage/Storage;Lcom/android/camera/data/VideoDataFactory;)V

    .line 1045
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1044
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoItemFactory;

    .line 11
    return-object v0
.end method
