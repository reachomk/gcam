.class public final Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideWeakActivityFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideWeakActivityFactory.java"

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
.field private final module:Lcom/google/android/apps/camera/inject/activity/ActivityModule;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideWeakActivityFactory;->module:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1021
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule_ProvideWeakActivityFactory;->module:Lcom/google/android/apps/camera/inject/activity/ActivityModule;

    .line 1022
    invoke-virtual {v0}, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->provideWeakActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 9
    return-object v0
.end method
