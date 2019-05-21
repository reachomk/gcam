.class public final Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;
.super Ljava/lang/Object;
.source "FaceDetectionModule_ProvideFaceRequestTransformerFactory.java"

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
.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;",
            ">;"
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
            "Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->flagsProvider:Ljavax/inject/Provider;

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
            "Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    .line 1028
    iget-object v0, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;

    iget-object v1, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionModule_ProvideFaceRequestTransformerFactory;->flagsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2030
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1029
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 11
    return-object v0
.end method
