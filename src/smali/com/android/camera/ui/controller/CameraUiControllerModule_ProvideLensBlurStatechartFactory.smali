.class public final Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideLensBlurStatechartFactory;
.super Ljava/lang/Object;
.source "CameraUiControllerModule_ProvideLensBlurStatechartFactory.java"

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
.field private final module:Lcom/android/camera/ui/controller/CameraUiControllerModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideLensBlurStatechartFactory;->module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    .line 1050
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;

    invoke-direct {v0}, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;-><init>()V

    .line 1021
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/LensBlurStatechart;

    .line 7
    return-object v0
.end method
