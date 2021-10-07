.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1124
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1123
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1128
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get9(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1132
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "battery_light_enabled"

    .line 1131
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1136
    const-string/jumbo v1, "battery_light_pulse"

    .line 1135
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1141
    const-string/jumbo v1, "notification_light_brightness_level"

    .line 1140
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1146
    :cond_32
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get18(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1148
    const-string/jumbo v1, "notification_light_multiple_leds_enable"

    .line 1147
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1153
    :cond_44
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get16(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1156
    const-string/jumbo v1, "battery_light_low_color"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1155
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1159
    const-string/jumbo v1, "battery_light_medium_color"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1158
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1162
    const-string/jumbo v1, "battery_light_full_color"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1161
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1165
    const-string/jumbo v1, "battery_light_really_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1164
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1168
    const-string/jumbo v1, "battery_light_allow_on_dnd"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1167
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1171
    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1170
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1175
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1127
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 1178
    return-void
.end method

.method public update()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1183
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get9(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1184
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get9(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1187
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1188
    const-string/jumbo v2, "battery_light_enabled"

    .line 1187
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d9

    move v2, v3

    :goto_22
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set9(Lcom/android/server/BatteryService;Z)Z

    .line 1191
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1192
    const-string/jumbo v2, "battery_light_pulse"

    .line 1191
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_dc

    move v2, v3

    :goto_31
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set8(Lcom/android/server/BatteryService;Z)Z

    .line 1195
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1196
    const-string/jumbo v2, "battery_light_allow_on_dnd"

    .line 1195
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_df

    move v2, v3

    :goto_40
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set1(Lcom/android/server/BatteryService;Z)Z

    .line 1197
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1198
    const-string/jumbo v2, "zen_mode"

    .line 1197
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e2

    move v2, v3

    :goto_4f
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->-set7(Lcom/android/server/BatteryService;Z)Z

    .line 1202
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1203
    const-string/jumbo v5, "battery_light_low_color"

    .line 1204
    const v6, 0x10e005e

    .line 1203
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1202
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set3(Lcom/android/server/BatteryService;I)I

    .line 1205
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1206
    const-string/jumbo v5, "battery_light_medium_color"

    .line 1207
    const v6, 0x10e005f

    .line 1206
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1205
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set4(Lcom/android/server/BatteryService;I)I

    .line 1208
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1209
    const-string/jumbo v5, "battery_light_full_color"

    .line 1210
    const v6, 0x10e0060

    .line 1209
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1208
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set2(Lcom/android/server/BatteryService;I)I

    .line 1211
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1212
    const-string/jumbo v5, "battery_light_really_full_color"

    .line 1213
    const v6, 0x10e00e5

    .line 1212
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1211
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set5(Lcom/android/server/BatteryService;I)I

    .line 1216
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1217
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1218
    const-string/jumbo v5, "notification_light_brightness_level"

    .line 1219
    const/16 v6, 0xff

    .line 1217
    invoke-static {v1, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-set13(Lcom/android/server/BatteryService;I)I

    .line 1223
    :cond_b4
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get18(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 1224
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1225
    const-string/jumbo v6, "notification_light_multiple_leds_enable"

    .line 1226
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get18(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_e5

    move v2, v3

    .line 1224
    :goto_ca
    invoke-static {v1, v6, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e7

    :goto_d0
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->-set11(Lcom/android/server/BatteryService;Z)Z

    .line 1229
    :cond_d3
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap5(Lcom/android/server/BatteryService;)V

    .line 1182
    return-void

    :cond_d9
    move v2, v4

    .line 1187
    goto/16 :goto_22

    :cond_dc
    move v2, v4

    .line 1191
    goto/16 :goto_31

    :cond_df
    move v2, v4

    .line 1195
    goto/16 :goto_40

    :cond_e2
    move v2, v4

    .line 1197
    goto/16 :goto_4f

    :cond_e5
    move v2, v4

    .line 1226
    goto :goto_ca

    :cond_e7
    move v3, v4

    .line 1224
    goto :goto_d0
.end method
