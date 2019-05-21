.class public final Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;
.super Ljava/lang/Object;
.source "ImageFilterImageSelector_Factory.java"

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
.field private final imageFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageFilter;",
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
            "Lcom/android/camera/processing/imagebackend/ImageFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;->imageFilterProvider:Ljavax/inject/Provider;

    .line 15
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageFilter;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1019
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector_Factory;->imageFilterProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;-><init>(Ljavax/inject/Provider;)V

    .line 8
    return-object v0
.end method
