.class public final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;
.super Ljava/lang/Object;
.source "ValidationModule_ProvideRegularPhotoValidatorFactory.java"

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
.field private final validatorUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;->validatorUtilProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1021
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule_ProvideRegularPhotoValidatorFactory;->validatorUtilProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;

    .line 1106
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$4;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule$4;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/validation/MetadataValidatorUtil;)V

    .line 1022
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v1, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;

    .line 8
    return-object v0
.end method
