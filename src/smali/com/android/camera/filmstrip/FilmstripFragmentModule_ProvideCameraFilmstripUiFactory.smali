.class public final Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvideCameraFilmstripUiFactory;
.super Ljava/lang/Object;
.source "FilmstripFragmentModule_ProvideCameraFilmstripUiFactory.java"

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
.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvideCameraFilmstripUiFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1020
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvideCameraFilmstripUiFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 1021
    invoke-virtual {v0}, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->provideCameraFilmstripUi$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NNAQ9F8DGMQPBIC536IR3DEDQ74QBGALKJM___()Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    .line 8
    return-object v0
.end method
