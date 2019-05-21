.class public final Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;
.super Ljava/lang/Object;
.source "CaptureModuleConfigBuilder_Factory.java"

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
.field private final configSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ImageConfigSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ImageConfigSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;->configSelectorProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1027
    new-instance v2, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;->configSelectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ImageConfigSelector;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/Logger$Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;-><init>(Lcom/android/camera/module/ImageConfigSelector;Lcom/android/camera/debug/Logger$Factory;)V

    .line 9
    return-object v2
.end method
