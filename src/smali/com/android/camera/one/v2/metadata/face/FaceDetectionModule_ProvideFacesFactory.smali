.class public final Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;
.super Ljava/lang/Object;
.source "FaceDetectionModule_ProvideFacesFactory.java"

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
.field private final module:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;->module:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 16
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;",
            ")",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;-><init>(Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1020
    iget-object v0, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFacesFactory;->module:Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;

    .line 1021
    invoke-virtual {v0}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule;->provideFaces()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 8
    return-object v0
.end method