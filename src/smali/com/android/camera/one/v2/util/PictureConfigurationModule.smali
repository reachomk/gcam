.class public final Lcom/android/camera/one/v2/util/PictureConfigurationModule;
.super Ljava/lang/Object;
.source "PictureConfigurationModule.java"


# instance fields
.field private final pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/camera/one/v2/util/PictureConfigurationModule;->pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;

    .line 12
    return-void
.end method


# virtual methods
.method final providePictureConfiguration()Lcom/android/camera/one/v2/util/PictureConfiguration;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/one/v2/util/PictureConfigurationModule;->pictureConfiguration:Lcom/android/camera/one/v2/util/PictureConfiguration;

    return-object v0
.end method
