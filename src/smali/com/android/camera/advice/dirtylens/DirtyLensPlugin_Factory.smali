.class public final Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;
.super Ljava/lang/Object;
.source "DirtyLensPlugin_Factory.java"

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
.field private final adviceYuvNativeUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final dirtyLensConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final dirtyLensSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final lensStateHistoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/LensStateHistory;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/DirtyLensSettings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/dirtylens/LensStateHistory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->dirtyLensSettingsProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->lensStateHistoryProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->adviceYuvNativeUtilProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p5, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    .line 1041
    new-instance v0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;

    iget-object v1, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->dirtyLensConfigProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/advice/dirtylens/DirtyLensConfig;

    iget-object v2, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->dirtyLensSettingsProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;

    iget-object v3, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->lensStateHistoryProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/advice/dirtylens/LensStateHistory;

    iget-object v4, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->adviceYuvNativeUtilProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;

    iget-object v5, p0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin;-><init>(Lcom/android/camera/advice/dirtylens/DirtyLensConfig;Lcom/android/camera/advice/dirtylens/DirtyLensSettings;Lcom/android/camera/advice/dirtylens/LensStateHistory;Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;Landroid/content/res/Resources;)V

    .line 9
    return-object v0
.end method
