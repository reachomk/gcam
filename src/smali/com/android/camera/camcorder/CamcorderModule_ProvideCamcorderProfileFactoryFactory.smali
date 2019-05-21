.class public final Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderProfileFactoryFactory;
.super Ljava/lang/Object;
.source "CamcorderModule_ProvideCamcorderProfileFactoryFactory.java"

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
.field private final camcorderProfileFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderProfileFactoryFactory;->camcorderProfileFactoryImplProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1023
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderProfileFactoryFactory;->camcorderProfileFactoryImplProvider:Ljavax/inject/Provider;

    .line 1024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideCamcorderProfileFactory(Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl;)Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1023
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 10
    return-object v0
.end method
