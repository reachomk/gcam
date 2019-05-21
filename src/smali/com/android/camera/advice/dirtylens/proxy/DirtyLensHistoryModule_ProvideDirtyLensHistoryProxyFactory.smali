.class public final Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory;
.super Ljava/lang/Object;
.source "DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory.java"

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
.field private final configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory;->module:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule;

    .line 21
    iput-object p2, p0, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory;->configProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1026
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryModule_ProvideDirtyLensHistoryProxyFactory;->configProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/dirtylens/DirtyLensConfig;

    .line 2014
    new-instance v0, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;

    invoke-direct {v0}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;-><init>()V

    .line 2015
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setMinSecondsBetweenPhotos(F)V

    .line 2016
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setMaxPhotoCount(I)V

    .line 2017
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setMinPhotoCount(I)V

    .line 2018
    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setWeightedScoreThreshold(F)V

    .line 2019
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setInitialScore(F)V

    .line 2020
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setFrameInfluenceDecayRate(F)V

    .line 1027
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;

    .line 9
    return-object v0
.end method
