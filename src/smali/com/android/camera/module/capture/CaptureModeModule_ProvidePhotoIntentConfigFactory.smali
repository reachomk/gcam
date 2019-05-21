.class public final Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentConfigFactory;
.super Ljava/lang/Object;
.source "CaptureModeModule_ProvidePhotoIntentConfigFactory.java"

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
.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
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
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentConfigFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1022
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentConfigFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->providePhotoIntentConfig$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNL4PBJDTQN4OR5ECTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9LNM8TBCCL6M2RJ1CTIN492DDTI7AR358DNMSPJ9CSTG____(Landroid/content/res/Resources;)Lcom/android/camera/ui/DetailsDialog;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DetailsDialog;

    .line 10
    return-object v0
.end method
