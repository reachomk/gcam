.class public Lcom/google/android/apps/camera/inject/app/ApplicationModule;
.super Ljava/lang/Object;
.source "ApplicationModule.java"


# instance fields
.field private final application:Landroid/app/Application;

.field private final applicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/app/Application;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;->application:Landroid/app/Application;

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;->applicationContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static fromApplication(Landroid/app/Application;)Lcom/google/android/apps/camera/inject/app/ApplicationModule;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/camera/inject/app/ApplicationModule;-><init>(Landroid/app/Application;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final provideAppContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public final provideAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public final provideAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/inject/app/ApplicationModule;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
