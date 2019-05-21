.class public final Lcom/google/android/apps/camera/inject/activity/ActivityModule;
.super Ljava/lang/Object;
.source "ActivityModule.java"


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    .line 36
    return-void
.end method


# virtual methods
.method public final provideActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final provideActivityContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public final provideActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final provideActivityResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final provideActivityWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public final provideFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public final provideIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final provideWeakActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/apps/camera/inject/activity/ActivityModule;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
