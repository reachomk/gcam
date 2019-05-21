.class public final Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;
.super Ljava/lang/Object;
.source "ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory.java"

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
.field private final maxNativeMemoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MaxNativeMemory;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MaxNativeMemory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;->maxNativeMemoryProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1033
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;->memoryManagerProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/memory/MemoryManager;

    iget-object v1, p0, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;->maxNativeMemoryProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/memory/MaxNativeMemory;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingModule_ProvideLightcycleLensBlurTaskManagerFactory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/processing/ProcessingServiceManager;

    .line 1038
    new-instance v3, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;-><init>(Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/processing/ProcessingServiceManager;)V

    .line 1034
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v3, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    .line 10
    return-object v0
.end method
