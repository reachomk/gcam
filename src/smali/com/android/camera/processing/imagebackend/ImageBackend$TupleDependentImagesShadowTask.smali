.class final Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;
.super Ljava/lang/Object;
.source "ImageBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TupleDependentImagesShadowTask"
.end annotation


# instance fields
.field private final dependentImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final imageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageShadowTask;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageShadowTask;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->imageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .line 1086
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->dependentImages:Ljava/util/Set;

    .line 1087
    return-void
.end method


# virtual methods
.method public final getDependentImages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->dependentImages:Ljava/util/Set;

    return-object v0
.end method

.method public final getImageShadowTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->imageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    return-object v0
.end method
